
<%--
  Created by IntelliJ IDEA.
  User: Youcode
  Date: 13/10/2025
  Time: 13:52
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="p-4 bg-white rounded-lg shadow-sm xl:p-8">
    <div class="space-y-3 sm:flex sm:items-start sm:space-y-0 sm:justify-between">
        <h2 class="text-lg font-medium text-gray-700 capitalize sm:text-xl md:text-2xl">Départements</h2>

        <div x-data="{ modelOpen: false }">
            <!-- Bouton d'ouverture -->
            <button
                    @click="modelOpen = !modelOpen"
                    class="flex items-center justify-center px-3 py-2 text-sm tracking-wide text-white capitalize transition-colors duration-200 transform bg-indigo-500 rounded-md hover:bg-indigo-600 focus:outline-none focus:bg-indigo-500 focus:ring focus:ring-indigo-300 focus:ring-opacity-50">
                <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-5 mx-1.5" viewBox="0 0 20 20" fill="currentColor">
                    <path fill-rule="evenodd" d="M10 3a1 1 0 011 1v5h5a1 1 0 110 2h-5v5a1 1 0 11-2 0v-5H4a1 1 0 110-2h5V4a1 1 0 011-1z" clip-rule="evenodd"></path>
                </svg>
                <span class="mx-1.5">Ajouter Departement</span>
            </button>

            <!-- Modal -->
            <div
                    x-show="modelOpen"
                    x-cloak
                    class="fixed inset-0 z-50 overflow-y-auto"
                    aria-labelledby="modal-title"
                    role="dialog"
                    aria-modal="true"
            >
                <div class="flex items-end justify-center min-h-screen px-4 text-center md:items-center sm:block sm:p-0">

                    <!-- Fond flou -->
                    <div
                            @click="modelOpen = false"
                            x-show="modelOpen"
                            x-transition:enter="transition ease-out duration-300 transform"
                            x-transition:enter-start="opacity-0"
                            x-transition:enter-end="opacity-100"
                            x-transition:leave="transition ease-in duration-200 transform"
                            x-transition:leave-start="opacity-100"
                            x-transition:leave-end="opacity-0"
                            class="fixed inset-0 transition-opacity bg-gray-500 bg-opacity-40 backdrop-blur-sm"
                            aria-hidden="true">
                    </div>

                    <!-- Contenu -->
                    <div
                            x-show="modelOpen"
                            x-transition:enter="transition ease-out duration-300 transform"
                            x-transition:enter-start="opacity-0 translate-y-4 sm:translate-y-0 sm:scale-95"
                            x-transition:enter-end="opacity-100 translate-y-0 sm:scale-100"
                            x-transition:leave="transition ease-in duration-200 transform"
                            x-transition:leave-start="opacity-100 translate-y-0 sm:scale-100"
                            x-transition:leave-end="opacity-0 translate-y-4 sm:translate-y-0 sm:scale-95"
                            class="inline-block w-full max-w-xl p-8 my-20 overflow-hidden text-left transition-all transform bg-white rounded-lg shadow-xl rtl:text-right 2xl:max-w-2xl"
                    >
                        <!-- En-tête -->
                        <div class="flex items-center justify-between mb-4">
                            <h1 class="text-xl font-medium text-gray-800">Ajouter un Departement</h1>
                            <button
                                    @click="modelOpen = false"
                                    class="text-gray-600 focus:outline-none hover:text-gray-800"
                            >
                                <svg xmlns="http://www.w3.org/2000/svg" class="w-7 h-7" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 14l2-2m0 0l2-2m-2 2l-2-2m2 2l2 2m7-2a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                                </svg>
                            </button>
                        </div>

                        <p class="text-sm text-gray-500 mb-6">
                            Remplissez les informations ci-dessous pour ajouter un nouveau Département au système.
                        </p>

                        <!-- Formulaire -->
                        <form class="space-y-4" method="post" action="${pageContext.request.contextPath}/admin/departements">
                            <input type="hidden" name="action" value="save">
                            <div>
                                <label class="block text-sm font-medium text-gray-700">Nom du Département</label>
                                <input name="nom" type="text" placeholder="Cardiologie" required
                                       class="w-full mt-1 px-3 py-2 border rounded-md text-gray-700 placeholder-gray-400 focus:border-indigo-400 focus:ring focus:ring-indigo-300 focus:ring-opacity-40 outline-none">
                            </div>

                            <!-- Boutons -->
                            <div class="flex justify-end mt-6 space-x-2">
                                <button
                                        type="button"
                                        @click="modelOpen = false"
                                        class="px-4 py-2 text-sm font-medium text-gray-700 bg-gray-100 border rounded-md hover:bg-gray-200 focus:outline-none">
                                    Annuler
                                </button>
                                <button
                                        type="submit"
                                        class="px-4 py-2 text-sm font-medium text-white bg-indigo-600 rounded-md hover:bg-indigo-500 focus:outline-none focus:ring focus:ring-indigo-300 focus:ring-opacity-40">
                                    Enregistrer
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <div class="flex flex-col mt-8">
        <div class="-my-2 overflow-x-auto xl:-mx-8">
            <div class="inline-block min-w-full py-2 align-middle sm:px-6 lg:px-8">
                <div class="overflow-hidden">
                    <table class="min-w-full divide-y divide-gray-200 ">
                        <thead>
                        <tr>

                            <th scope="col" class="text-center align-middle w-1/3 px-6 py-3  text-sm font-medium tracking-wider text-left text-gray-700 uppercase rtl:text-right whitespace-nowrap">
                                Id
                            </th>

                            <th scope="col" class="text-center align-middle w-1/3 px-6 py-3 text-sm font-medium tracking-wider text-left text-gray-700 uppercase rtl:text-right whitespace-nowrap">
                                Nom
                            </th>

                            <th scope="col" class="text-center align-middle w-1/3 px-6 py-3 text-sm font-medium tracking-wider text-left text-gray-700 uppercase rtl:text-right whitespace-nowrap">
                                Actions
                            </th>
                        </tr>
                        </thead>

                        <tbody class="bg-white divide-y divide-gray-200">
                            <c:forEach var="dept" items="${departements}">
                                <tr>
                                    <td class="text-center align-middle flex-1 px-6 py-4 text-gray-500 whitespace-nowrap">
                                        ${dept.idDepartement}
                                    </td>
                                    <td class="text-center align-middle flex-1 px-6 py-4 text-gray-500 whitespace-nowrap">
                                        ${dept.nom}
                                    </td>

                                    <td class="text-center align-middle px-6 py-4  ">
                                        <div class="flex justify-center items-center space-x-4">
<%--                                            button update--%>
                                            <form method="post" action="${pageContext.request.contextPath}/admin/departements">
                                                <input type="hidden" name="action" value="update">
                                                <input type="hidden" name="id" value="${dept.idDepartement}">
                                            <button class="mx-4 text-gray-500 focus:outline-none hover:text-indigo-500">
                                                <svg xmlns="http://www.w3.org/2000/svg" class="w-6 h-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M11 5H6a2 2 0 00-2 2v11a2 2 0 002 2h11a2 2 0 002-2v-5m-1.414-9.414a2 2 0 112.828 2.828L11.828 15H9v-2.828l8.586-8.586z"></path>
                                                </svg>
                                            </button>
                                            </form>

                                            <form method="post" action="${pageContext.request.contextPath}/admin/departements">
                                                <input type="hidden" name="action" value="delete">
                                                <input type="hidden" name="id" value="${dept.idDepartement}">
                                            <button class="text-gray-500 focus:outline-none hover:text-indigo-500">
                                                <svg xmlns="http://www.w3.org/2000/svg" class="w-6 h-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16"></path>
                                                </svg>
                                            </button>
                                            </form>

                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>


                </div>
            </div>
        </div>
    </div>
</div>
