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
        <h2 class="text-lg font-medium text-gray-700 capitalize sm:text-xl md:text-2xl">Patients</h2>

    </div>

    <div class="flex flex-col mt-8">
        <div class="-my-2 overflow-x-auto xl:-mx-8">
            <div class="inline-block min-w-full py-2 align-middle sm:px-6 lg:px-8">
                <div class="overflow-hidden">
                    <table class="min-w-full divide-y divide-gray-200 ">
                        <thead>
                        <tr>

                            <th scope="col" class="text-center align-middle w-1/6 px-6 py-3  text-sm font-medium tracking-wider text-left text-gray-700 uppercase rtl:text-right whitespace-nowrap">
                                Id
                            </th>

                            <th scope="col" class="text-center align-middle w-1/6 px-6 py-3 text-sm font-medium tracking-wider text-left text-gray-700 uppercase rtl:text-right whitespace-nowrap">
                                Nom
                            </th>

                            <th scope="col" class="text-center align-middle w-1/6 px-6 py-3 text-sm font-medium tracking-wider text-left text-gray-700 uppercase rtl:text-right whitespace-nowrap">
                                Prenom
                            </th>

                            <th scope="col" class="text-center align-middle w-1/6 px-6 py-3 text-sm font-medium tracking-wider text-left text-gray-700 uppercase rtl:text-right whitespace-nowrap">
                                email
                            </th>

                            <th scope="col" class="text-center align-middle w-1/6 px-6 py-3 text-sm font-medium tracking-wider text-left text-gray-700 uppercase rtl:text-right whitespace-nowrap">
                                Poids
                            </th>

                            <th scope="col" class="text-center align-middle w-1/6 px-6 py-3 text-sm font-medium tracking-wider text-left text-gray-700 uppercase rtl:text-right whitespace-nowrap">
                                Taille
                            </th>

                            <th scope="col" class="text-center align-middle w-1/6 px-6 py-3 text-sm font-medium tracking-wider text-left text-gray-700 uppercase rtl:text-right whitespace-nowrap">
                                Actions
                            </th>
                        </tr>
                        </thead>

                        <tbody class="bg-white divide-y divide-gray-200">
                        <c:forEach var="patient" items="${patients}">
                            <tr>
                                <td class="text-center align-middle flex-1 px-6 py-4 text-gray-500 whitespace-nowrap">
                                        ${patient.id}
                                </td>
                                <td class="text-center align-middle flex-1 px-6 py-4 text-gray-500 whitespace-nowrap">
                                        ${patient.nom}
                                </td>
                                <td class="text-center align-middle flex-1 px-6 py-4 text-gray-500 whitespace-nowrap">
                                        ${patient.prenom}
                                </td>
                                <td class="text-center align-middle flex-1 px-6 py-4 text-gray-500 whitespace-nowrap">
                                        ${patient.email}
                                </td>
                                <td class="text-center align-middle flex-1 px-6 py-4 text-gray-500 whitespace-nowrap">
                                        ${patient.poids}
                                </td>
                                <td class="text-center align-middle flex-1 px-6 py-4 text-gray-500 whitespace-nowrap">
                                        ${patient.taille}
                                </td>

                                <td class="text-center align-middle px-6 py-4  ">
                                    <div class="flex justify-center items-center space-x-4">
                                            <%--                                            button update--%>
                                        <form method="post" action="${pageContext.request.contextPath}/admin/patients">
                                            <input type="hidden" name="action" value="update">
                                            <input type="hidden" name="id" value="${patient.id}">
                                            <button class="mx-4 text-gray-500 focus:outline-none hover:text-indigo-500">
                                                <svg xmlns="http://www.w3.org/2000/svg" class="w-6 h-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M11 5H6a2 2 0 00-2 2v11a2 2 0 002 2h11a2 2 0 002-2v-5m-1.414-9.414a2 2 0 112.828 2.828L11.828 15H9v-2.828l8.586-8.586z"></path>
                                                </svg>
                                            </button>
                                        </form>

                                        <form method="post" action="${pageContext.request.contextPath}/admin/patients">
                                            <input type="hidden" name="action" value="delete">
                                            <input type="hidden" name="id" value="${patient.id}">
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
